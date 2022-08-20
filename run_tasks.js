import dotenv from 'dotenv';
dotenv.config();

import * as _utl from './run_utilites.js';
import * as _lib from './run_photolib.js';
import * as _db from './run_lowdb.js';
import { logit } from './run_logutil.js';
import { runScript } from './run_scripts.js';
import { runWeb } from './run_Web.js';
import * as _aws from './run_AWSS3.js';


// Configuration
const PHOTOLIB = './PhotoLib';
const PHOTOWEB = './PhotoWeb';
const PHOTOTMP = './PhotoTmp';
const PHOTOFX = '/3_FXRepo'

const ERR = 'err';
const BOX = 'box';
const LOG = 'log';
const FIG = 'fig';
const BUG = 'debug';
const AWSBUCKET = 'skicyclerun'

// STEP #1
async function task_01() {
    logit(BOX, 'TASK #01 - CLEAN DB AND DIRECTORY')
    let dirList = await _lib.resetAll(PHOTOWEB, PHOTOTMP)
    // Output results of PURGE
    logit(LOG, `Cleanzed DB & Location: ${dirList}`)
}
async function task_02() {

    logit(BOX, 'TASK #02 - Get Photo META data')
    const photos = await _utl.getDirFiles(PHOTOLIB, 'JPEG', 'JPG'); //* --> process original photos
    logit(LOG, `Number of photos to process: ${photos.length}`)
    const numPhotos = await _lib.photoData(photos)
    logit(LOG, `Photo Data - colleted: ${numPhotos}`)

}
async function task_03() {

    logit(BOX, 'TASK #03 - Copy files to TMP directory')
    const numPhotos = await _lib.photoRename(PHOTOTMP)
    logit(LOG, `Copy photos - copied: ${numPhotos}`)

}
async function task_04() {

    logit(BOX, 'TASK #04 - Scale Photos')
    const numPhotos = await _lib.photoScale(PHOTOTMP)
    logit(LOG, `Scale Photos: ${numPhotos}`)

}
async function task_05() {

    logit(BOX, 'TASK #05 - FX GreyScale')
    const numPhotos = await _lib.photoFXMaker(PHOTOTMP, 'GreyScale')
    logit(LOG, `GreyScale Photos: ${numPhotos}`)

}
async function task_06() {

    logit(BOX, 'TASK #06 - FX Sepia')
    const numPhotos = await _lib.photoFXMaker(PHOTOTMP, 'Sepia')
    logit(LOG, `Sepia Photos: ${numPhotos}`)

}
async function task_07() {

    logit(BOX, 'TASK #07 - FX Poster')
    const numPhotos = await _lib.photoFXMaker(PHOTOTMP, 'Poster')
    logit(LOG, `Poster Photos: ${numPhotos}`)

}
async function task_08() {

    logit(BOX, 'TASK #08 - FX Pencil')
    const numPhotos = await _lib.photoFXMaker(PHOTOTMP, 'Pencil')
    logit(LOG, `Pencil Photos: ${numPhotos}`)

}
async function task_09() {

    logit(BOX, 'TASK #09 - FX Watercolor')
    const numPhotos = await _lib.photoFXMaker(PHOTOTMP, 'Watercolor')
    logit(LOG, `Watercolor Photos: ${numPhotos}`)

}
async function task_10() {

    logit(BOX, 'TASK #10 - FX Charcoal')
    const numPhotos = await _lib.photoFXMaker(PHOTOTMP, 'Charcoal')
    logit(LOG, `Charcoal Photos: ${numPhotos}`)

}
async function script_01() {

    logit(BOX, 'SCRIPT #01 - WATERCOLOR')
    const numPhotos = await runScript('watercolor')
    logit(LOG, `SCRIPT #01 - WATERCOLOR: ${numPhotos}`)

}
async function script_02() {

    logit(BOX, 'SCRIPT #02 - SKETCHING')
    const numPhotos = await runScript('sketching')
    logit(LOG, `SCRIPT #02 - SKETCHING: ${numPhotos}`)

}
async function script_03() {

    logit(BOX, 'SCRIPT #03 - TINYPLANET')
    const numPhotos = await runScript('tinyplanet')
    logit(LOG, `SCRIPT #03 - TINYPLANET: ${numPhotos}`)

}

async function web_01() {

    logit(BOX, 'WEB #01 - WEB REDUX')
    const [numPhotos, totalBytesSaved] = await runWeb(PHOTOTMP, PHOTOFX, PHOTOWEB)
    logit(LOG, `WEB #01 - WEB REDUX: ${numPhotos} - Bytes Compressed: ${totalBytesSaved}`)

}

async function aws_01() {
    logit(BOX, `AWS #01 - LIST ITEMS: ${AWSBUCKET}`)
    const totalBytes = await _aws.listBucket(AWSBUCKET)
    logit(LOG, `AWS #01 - Total Bytes: ${totalBytes}`)
    // await _aws.createBucket('SkiCycleRun-Private')
    // await _aws.putObject('tst01', './images/car.svg')
}

async function aws_02() {
    logit(BOX, `AWS #02 - UPLOAD: ${AWSBUCKET}`)
    const [numPhotos, totalBytes] = await _aws.upLoadAlbums(AWSBUCKET, PHOTOWEB)
    logit(LOG, `AWS #02 - Number of files: ${numPhotos} - Bytes: ${totalBytes}`)
}

// ********** Run sequence tasks
(async function () {

    // TEST START
    logit(FIG, 'START')

    await task_01()
    await task_02()
    await task_03()
    await task_04()
    await task_05()
    await task_06()
    await task_07()
    await task_08()
    await task_09()
    await task_10()

    await script_01()
    await script_02()
    await script_03()

    await web_01()

    await aws_01()
    await aws_02()

    // FINI
    logit(FIG, 'FINI')
}());

export { task_01, task_02, task_03, task_04, task_05, task_06, task_07, task_08, task_09, task_10, script_01, script_02, script_03, web_01, aws_01, aws_02 }