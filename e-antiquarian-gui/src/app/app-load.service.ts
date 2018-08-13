import { Injectable, Inject } from "@angular/core";

import {sequelize} from './sequelize';

@Injectable({ 
    providedIn: 'root' 
})
export class AppLoadService {

    constructor(@Inject('USER_HOME_DIR') private baseDir: string) { }

    initializeSequelize(): Promise<any> {
        
        return new Promise((resolve, reject) => {
            
            //sequelize.sync({force: true});
            
            console.log(`HOME DIR: ${this.baseDir}`);
            
            resolve();
        });
    }

}