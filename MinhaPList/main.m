//
//  main.m
//  MinhaPList
//
//  Created by Mauricio Junior on 3/27/17.
//  Copyright © 2017 Mauricio Junior. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
 
        //criando array de itens
        NSMutableArray *itens = [[NSMutableArray alloc]init];
        
        //criando o primeiro item
        NSMutableDictionary *item0 = [[NSMutableDictionary alloc]init];
        [item0 setObject:@"MAU" forKey:@"abreviacao"];
        [item0 setObject:@"Mauricio Junior" forKey:@"nome"];
        [item0 setObject:@"25" forKey:@"idade"];
        
        //adicionando no array o item preenchido
        [itens addObject:item0];
        
        //criando o segundo item
        NSMutableDictionary *item1 = [[NSMutableDictionary alloc]init];
        [item1 setObject:@"MAR" forKey:@"abreviacao"];
        [item1 setObject:@"Markin" forKey:@"nome"];
        [item1 setObject:@"24" forKey:@"idade"];
        
        //adicionando no array o item preenchido
        [itens addObject:item1];
        
        BOOL escrito = [itens writeToFile:@"/tmp/itens.plist" atomically:YES];
        if (escrito == YES){
            NSLog(@"Gravou o arquivo");
        }else{
            NSLog(@"Erro ao gravar o arquivo");
        }
        
        
        //pegando o arquivo
        NSArray *meuPlist = [NSArray arrayWithContentsOfFile:@"/tmp/itens.plist"];
        
        for (NSDictionary *item in meuPlist) {
            NSLog(@"%@", item);
            NSLog(@"%@", item[@"abreviacao"]);
        }
        
    }
    return 0;
}
