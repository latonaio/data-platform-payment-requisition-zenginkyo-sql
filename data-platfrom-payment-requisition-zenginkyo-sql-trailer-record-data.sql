CREATE TABLE `data_platform_payment_requisition_zenginkyo_trailer_record_data`
(
  `PayerPaymentRequisitionID`              int(16) NOT NULL,
  `Payer`                                  int(12) NOT NULL,
  `PayerPaymentDate`                       date NOT NULL,
  `RecordType`                             varchar(1) NOT NULL,        -- "8"             データ区分
  `BussinesType`                           varchar(2) NOT NULL,        -- "21"            業務種別       
  `CharacterType`                          varchar(1) NOT NULL,        -- "0"             文字コード種類
  `ConsignorCode`                          varchar(10) NOT NULL,       -- "0110999999"    委託者コード
  `DesignatedTransferDate`                 varchar(4) NOT NULL,        -- "MMDD"          振込指定日
  `AssociationFinancialInstitutionNumber`  varchar(4) NOT NULL,        -- "2606"          当組合金融機関番号
  `AssociationBranchCodeNumber`            varchar(3) NOT NULL,        -- "010"           当組合支店コード番号
  `DepositItem`                            varchar(1) NOT NULL,        -- "1"             預金種目(依頼人)
  `AccountNumber`                          varchar(7) NOT NULL,        -- "1234567"       口座番号(依頼人)
  `TotalItem`                              varchar(6) DEFAULT NULL,    -- "21"            合計件数        
  `TotalAmount`                            varchar(12) DEFAULT NULL,   -- "12"            合計金額
  `Dummy`                                  varchar(101) DEFAULT NULL,  --                 ダミー 
    
    PRIMARY KEY (`PayerPaymentRequisitionID`),

    CONSTRAINT `DataPlatformPaymentRequisitionZenginkyoTrailerRecordData_fk` FOREIGN KEY (`PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_zenginkyo_header_record_data` (`PayerPaymentRequisitionID`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
