import axios from "axios";

const KEY = 'AIzaSyC8VM2ryc_MiNOhYtQvqEkCVNAS12Sn7Jc';


export default axios.create({
    baseURL: 'https://www.googleapis.com/youtube/v3',
    params: {
        part: 'snippet',
        type: 'video',
        maxResult: 5,
        key: KEY
    }
}); 