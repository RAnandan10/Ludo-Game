//
//  BoardStructure.swift
//  Project
//
//  Created by Suresh Narasimha Nayak on 11/29/22.
//

import Foundation

/*
 key: x ,y coordinates values
 val : [color, isSafe, [connectedCells]
 1: white
 2: red
 3. Blue
 4: green
 5: yellow
 6. black
 */
public var callMapping = ["0000":[3,1,["0001"]],
                   "0001":[3,1,["0001"]],
                   "0002":[3,1,["0001"]],
                   "0003":[3,1,["0001"]],
                   "0004":[3,1,["0001"]],
                   "0005":[3,1,["0001"]],
                   "0006":[1,1,["0106"]],
                   "0007":[1,1,["0006","0107"]],
                   "0008":[1,1,["0007"]],
                   "0009":[2,1,["0001"]],
                   "0010":[2,1,["0001"]],
                   "0011":[2,1,["0001"]],
                   "0012":[2,1,["0001"]],
                   "0013":[2,1,["0001"]],
                   "0014":[2,1,["0001"]],
                   
                   //2
                   "0100":[3,1,["0001"]],
                                      "0101":[1,1,["0001"]],
                                      "0102":[3,1,["0001"]],
                                      "0103":[3,1,["0001"]],
                                      "0104":[1,1,["0001"]],
                                      "0105":[3,1,["0001"]],
                                      "0106":[1,1,["0206"]],
                                      "0107":[2,1,["0207"]],
                                      "0108":[2,1,["0008"]],
                                      "0109":[2,1,["0001"]],
                                      "0110":[1,1,["0001"]],
                                      "0111":[2,1,["0613"]],
                                      "0112":[2,1,["0001"]],
                                      "0113":[1,1,["0613"]],
                                      "0114":[2,1,["0001"]],
                   //3
                   "0200":[3,1,["0001"]],
                                      "0201":[3,1,["0001"]],
                                      "0202":[3,1,["0001"]],
                                      "0203":[3,1,["0001"]],
                                      "0204":[3,1,["0001"]],
                                      "0205":[3,1,["0001"]],
                                      "0206":[3,1,["0306"]],
                                      "0207":[2,1,["0307"]],
                                      "0208":[1,1,["0108"]],
                                      "0209":[2,1,["0001"]],
                                      "0210":[2,1,["0001"]],
                                      "0211":[2,1,["0001"]],
                                      "0212":[2,1,["0001"]],
                                      "0213":[2,1,["0001"]],
                                      "0214":[2,1,["0001"]],
                   //4
                   "0300":[3,1,["0001"]],
                                      "0301":[1,1,["0001"]],
                                      "0302":[3,1,["0001"]],
                                      "0303":[3,1,["0001"]],
                                      "0304":[1,1,["0001"]],
                                      "0305":[3,1,["0001"]],
                                      "0306":[1,1,["0406"]],
                                      "0307":[2,1,["0407"]],
                                      "0308":[1,1,["0208"]],
                                      "0309":[2,1,["0001"]],
                                      "0310":[1,1,["0001"]],
                                      "0311":[2,1,["0001"]],
                                      "0312":[2,1,["0001"]],
                                      "0313":[1,1,["0001"]],
                                      "0314":[2,1,["0001"]],
                   //5
                   "0400":[3,1,["0001"]],
                                      "0401":[3,1,["0001"]],
                                      "0402":[3,1,["0001"]],
                                      "0403":[3,1,["0001"]],
                                      "0404":[3,1,["0001"]],
                                      "0405":[3,1,["0001"]],
                                      "0406":[1,1,["0506"]],
                                      "0407":[2,1,["0507"]],
                                      "0408":[1,1,["0308"]],
                                      "0409":[2,1,["0001"]],
                                      "0410":[2,1,["0001"]],
                                      "0411":[2,1,["0613"]],
                                      "0412":[2,1,["0001"]],
                                      "0413":[2,1,["0613"]],
                                      "0414":[2,1,["0001"]],
                   //6
                   "0500":[3,1,["0001"]],
                                      "0501":[3,1,["0001"]],
                                      "0502":[3,1,["0001"]],
                                      "0503":[3,1,["0001"]],
                                      "0504":[3,1,["0001"]],
                                      "0505":[3,1,["0001"]],
                                      "0506":[1,1,["0605"]],
                                      "0507":[2,1,["0607"]],
                                      "0508":[1,1,["0408"]],
                                      "0509":[2,1,["0001"]],
                                      "0510":[2,1,["0001"]],
                                      "0511":[2,1,["0001"]],
                                      "0512":[2,1,["0001"]],
                                      "0513":[2,1,["0001"]],
                                      "0514":[2,1,["0001"]],
                   //7
                          "0600":[1,1,["0700"]],
                                             "0601":[3,1,["0600"]],
                                             "0602":[1,1,["0601"]],
                                             "0603":[1,1,["0602"]],
                                             "0604":[1,1,["0603"]],
                                             "0605":[1,1,["0604"]],
                                             "0606":[0,1,["0001"]],
                                             "0607":[0,1,["0001"]],
                                             "0608":[0,1,["0501"]],
                                             "0609":[1,1,["0508"]],
                                             "0610":[1,1,["0609"]],
                                             "0611":[1,1,["0610"]],
                                             "0612":[2,1,["0611"]],
                                             "0613":[1,1,["0612"]],
                                             "0614":[1,1,["0613"]],
                          //8

                   "0700":[1,1,["0800","0701"]],
                                      "0701":[3,1,["0001"]],
                                      "0702":[3,1,["0001"]],
                                      "0703":[3,1,["0001"]],
                                      "0704":[3,1,["0001"]],
                                      "0705":[3,1,["0001"]],
                                      "0706":[0,1,["0001"]],
                                      "0707":[0,1,["0001"]],
                                      "0708":[0,1,["0001"]],
                                      "0709":[4,1,["0001"]],
                                      "0710":[4,1,["0001"]],
                                      "0711":[4,1,["0001"]],
                                      "0712":[4,1,["0001"]],
                                      "0713":[4,1,["0001"]],

                                      "0714":[1,1,["0614","0713"]],
                //9
                   "0800":[1,1,["0801"]],
                                      "0801":[1,1,["0802"]],
                                      "0802":[5,1,["0803"]],
                                      "0803":[1,1,["0804"]],
                                      "0804":[1,1,["0805"]],
                                      "0805":[1,1,["0906"]],
                                      "0806":[0,1,["0001"]],
                                      "0807":[0,1,["0001"]],
                                      "0808":[0,1,["0001"]],
                                      "0809":[1,1,["0810"]],
                                      "0810":[1,1,["0811"]],
                                      "0811":[1,1,["0812"]],
                                      "0812":[1,1,["0813"]],
                                      "0813":[4,1,["0814"]],
                                      "0814":[1,1,["0714"]],
                   //10
                   "0900":[5,1,["0001"]],
                                      "0901":[5,1,["0001"]],
                                      "0902":[5,1,["0001"]],
                                      "0903":[5,1,["0001"]],
                                      "0904":[5,1,["0001"]],
                                      "0905":[5,1,["0001"]],
                                      "0906":[1,1,["1006"]],
                                      "0907":[5,1,["0001"]],
                                      "0908":[1,1,["0809"]],
                                      "0909":[4,1,["0001"]],
                                      "0910":[4,1,["0001"]],
                                      "0911":[4,1,["0001"]],
                                      "0912":[4,1,["0001"]],
                                      "0913":[4,1,["0001"]],
                                      "0914":[4,1,["0001"]],
                   //11
                   "1000":[5,1,["0801"]],
                                      "1001":[5,1,["0001"]],
                                      "1002":[5,1,["0001"]],
                                      "1003":[5,1,["0801"]],
                                      "1004":[5,1,["0001"]],
                                      "1005":[5,1,["0001"]],
                                      "1006":[1,1,["1106"]],
                                      "1007":[5,1,["0001"]],
                                      "1008":[1,1,["0908"]],
                                      "1009":[4,1,["0001"]],
                                      "1010":[4,1,["0001"]],
                                      "1011":[4,1,["0001"]],
                                      "1012":[4,1,["0001"]],
                                      "1013":[4,1,["0001"]],
                                      "1014":[4,1,["0001"]],
                   //12
                   "1100":[5,1,["0001"]],
                                      "1101":[1,1,["0001"]],
                                      "1102":[5,1,["0001"]],
                                      "1103":[5,1,["0001"]],
                                      "1104":[1,1,["0001"]],
                                      "1105":[5,1,["0001"]],
                                      "1106":[1,1,["1206"]],
                                      "1107":[5,1,["0001"]],
                                      "1108":[1,1,["1008"]],
                                      "1109":[4,1,["0001"]],
                                      "1110":[1,1,["0001"]],
                                      "1111":[4,1,["0001"]],
                                      "1112":[4,1,["0001"]],
                                      "1113":[1,1,["0001"]],
                                      "1114":[4,1,["0001"]],
                   //13
                   "1200":[5,1,["0001"]],
                                      "1201":[5,1,["0001"]],
                                      "1202":[5,1,["0001"]],
                                      "1203":[5,1,["0001"]],
                                      "1204":[5,1,["0001"]],
                                      "1205":[5,1,["0001"]],
                                      "1206":[1,1,["1306"]],
                                      "1207":[5,1,["0001"]],
                                      "1208":[4,1,["1108"]],
                                      "1209":[4,1,["0001"]],
                                      "1210":[4,1,["0001"]],
                                      "1211":[4,1,["0001"]],
                                      "1212":[4,1,["0001"]],
                                      "1213":[4,1,["0001"]],
                                      "1214":[4,1,["0001"]],
                   //14
                   "1300":[5,1,["0801"]],
                                      "1301":[1,1,["0801"]],
                                      "1302":[5,1,["0001"]],
                                      "1303":[5,1,["0801"]],
                                      "1304":[1,1,["0001"]],
                                      "1305":[5,1,["0001"]],
                                      "1306":[5,1,["1406"]],
                                      "1307":[5,1,["0001"]],
                                      "1308":[1,1,["1208"]],
                                      "1309":[4,1,["0001"]],
                                      "1310":[1,1,["0001"]],
                                      "1311":[4,1,["0001"]],
                                      "1312":[4,1,["0001"]],
                                      "1313":[1,1,["0001"]],
                                      "1314":[4,1,["0001"]],
                   //15
                   "1400":[5,1,["0001"]],
                                      "1401":[5,1,["0001"]],
                                      "1402":[5,1,["0001"]],
                                      "1403":[5,1,["0001"]],
                                      "1404":[5,1,["0001"]],
                                      "1405":[5,1,["0001"]],
                                      "1406":[1,1,["1407"]],
                                      "1407":[1,1,["1408","1307"]],
                                      "1408":[1,1,["1308"]],
                                      "1409":[4,1,["0001"]],
                                      "1410":[4,1,["0001"]],
                                      "1411":[4,1,["0001"]],
                                      "1412":[4,1,["0001"]],
                                      "1413":[4,1,["0001"]],
                                      "1414":[4,1,["0001"]],
                

                   
                   
]

public var tokenHomes = ["red":["1001","1003","1301","1303"],
                         "blue":["0101","0103","0401","0403"],
                         "yellow":["0111","0113","0411","0413"],
                         "green":["1011","1013","1311","1313"]]

public var colorCodes = ["red":[2],
                         "blue":[3],
                         "yellow":[5],
                         "green":[4]]

