import { Injectable } from "@angular/core";

@Injectable({ 
    providedIn: 'root' 
})
export class AppLoadService {

    constructor() { }

    initializeApp(): Promise<any> {
        
        return new Promise((resolve, reject) => {
        
            
            resolve();
        });
    }

}