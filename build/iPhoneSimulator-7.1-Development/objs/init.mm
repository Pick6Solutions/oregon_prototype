#import <Foundation/Foundation.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_define_global_const(const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_48B212745E8E4ED79B548888F622FE7C(void *, void *);
void MREP_522940D2C1B94AA5868417FC7810F7F5(void *, void *);
void MREP_175D6AD0408A427696D7C67E629E0172(void *, void *);
void MREP_54026FD7431C4129AEB566884301C553(void *, void *);
void MREP_E3DAA347B03A48499E59BD51609F7E1C(void *, void *);
void MREP_9E1EFA3CA95A4ED7918EA75274B62F0D(void *, void *);
void MREP_9E6BFCA78E4748839C0812774F1E3CBC(void *, void *);
void MREP_668AEBB4BA2C4D10BE521AA58EBC9222(void *, void *);
void MREP_7621BB820321430F9B7D3C1FF355F79B(void *, void *);
void MREP_D7B03ED331434B789FF18CD73008BE7C(void *, void *);
void MREP_1CA42FB915304FF9AA656DB33DDEDF48(void *, void *);
void MREP_5055D4E6537A47D09238360901836F03(void *, void *);
void MREP_52DE8005149E4149BF7E663431D995AA(void *, void *);
void MREP_75507912F4F1460B8B4AA4DEBB09F604(void *, void *);
void MREP_4A443E1182234B34B7A49FA0BEF0B55A(void *, void *);
void MREP_241EEB52C88D4BE38F3CA26A370EE8A2(void *, void *);
void MREP_6A69A2F6020C4DC8A6795F6732E1F115(void *, void *);
void MREP_AB58A0AFB7494181B453913A45D25004(void *, void *);
void MREP_3A4A6340C2024546B5A44116FFD2EDA8(void *, void *);
void MREP_1A393373489A48848B5C6F7588438101(void *, void *);
void MREP_70ECA97B4685472A98973745ED1CE1F9(void *, void *);
void MREP_E3174C1D5500434F810A0013E658827D(void *, void *);
void MREP_0A071EDAE2BB46088AF6EDFA1E877851(void *, void *);
void MREP_BA92CEF5406C483097DB357997EC2DAC(void *, void *);
void MREP_9FCE85ED83D2412AB5CE0D0AAF25399A(void *, void *);
void MREP_3E44A1B3EF3449ECB79293B0B7970EE7(void *, void *);
void MREP_DD6A08C761624A3FBEF847DED6CF1D8E(void *, void *);
void MREP_6E8B04D1543E4F6B9ABA8B453B51918F(void *, void *);
void MREP_17ABABC759C944CE8E13D2D7B7A4793B(void *, void *);
void MREP_09A236E7E7534F1699648BB0C1343B0E(void *, void *);
void MREP_2D336EC3450A42A7804215220308A2B7(void *, void *);
void MREP_7D562606C3B54934ADBCBAEA6738DB99(void *, void *);
void MREP_4949491E11194F2F821F8C576A1CE231(void *, void *);
void MREP_2CAC35A3E2BE4AEC89665520880E446C(void *, void *);
void MREP_CD3EFA1E86374E40B4E4724412214EC2(void *, void *);
void MREP_6110DBA523974E22B6A757647B37DCED(void *, void *);
void MREP_51A20F62AE1D401C8B584B55217B40CB(void *, void *);
void MREP_EDF62E95390544F895AC620B6128DEAB(void *, void *);
void MREP_2FAFD27D5E2644FFBCC42837FE339704(void *, void *);
void MREP_2419CE4A9A4441668A7651EA43FCFEC5(void *, void *);
void MREP_021F9BB2BB9E41DF9926DC6FC1862183(void *, void *);
void MREP_9AC5994DCBFA456CB2B6EAFEA978BEE4(void *, void *);
void MREP_F24E4081778C4B15A660F002CDBE5F56(void *, void *);
void MREP_829ED662E6834C2CA6B6FA8A35DEC584(void *, void *);
void MREP_AE73F99471A540C2A605A2F877CCF32E(void *, void *);
void MREP_428ECB7F7F58426689BB26B7289FDB37(void *, void *);
void MREP_63D769F548F54243AC7481B7A33B16C9(void *, void *);
void MREP_861F2E83707342609774069D62F70710(void *, void *);
void MREP_92882ADAE8554056B0512894DC521F13(void *, void *);
void MREP_684D4C24A1D14EFF85D60260878D9730(void *, void *);
void MREP_4DE13BF4D4FF432F8924841F7AB61289(void *, void *);
void MREP_9BC55C89D4484B5E85F03A39AEA7502F(void *, void *);
void MREP_0CB2B14511B24DB287475C252D55AFDD(void *, void *);
void MREP_9C61252376CE4DBBAFDA8729CE09414E(void *, void *);
void MREP_1528A6ABF71B4C6EBD82440832DF2A19(void *, void *);
void MREP_BD8518854AFE4975906D71985F4394F0(void *, void *);
void MREP_CA0D780B4EBA4631B5EB973F9694847A(void *, void *);
void MREP_9A3C7AE9ED774583BAAD8A4F4546549F(void *, void *);
void MREP_0D2EB440657146C1B680E9604208B4F6(void *, void *);
void MREP_538A06E9BC2D4BA6A7F6A5A54C273FDE(void *, void *);
void MREP_05E0ABD163684004A61E493214EFE774(void *, void *);
void MREP_9016CFB2371A4A779D9BA2F0E53D87F7(void *, void *);
void MREP_18FD331B7FFE46D6AC5BF205C72D79F7(void *, void *);
void MREP_4F5FD38E8EDD45BF98B2F3B6A779368D(void *, void *);
void MREP_286DC68265294FC68AA0665384AD8DC7(void *, void *);
void MREP_2D548DBA376B417099AD290D7EBF2811(void *, void *);
void MREP_EF9CBA63E5704FC6BB0C5DCEBEE8F229(void *, void *);
void MREP_2CA7B4F205C147B1AD5BAE6E63E99061(void *, void *);
void MREP_5F016BD4C385479CB4BCDF2F408E3DFB(void *, void *);
void MREP_55BCC796AF9E4F9B909DF9CD12BECE05(void *, void *);
void MREP_4A3707C9D5C647A2BF5AD5A8BDFB6925(void *, void *);
void MREP_F62F031FCD214D7DA93468207E7A556D(void *, void *);
void MREP_A324B5BD302448F6A59D1056B0017E16(void *, void *);
void MREP_3BA59055C6CE43419A85F30A8B1566D3(void *, void *);
void MREP_E21E590EE65542359A793BCD7F3C5745(void *, void *);
void MREP_23DEAE473CFB4F2BA87037E82CE4BBD2(void *, void *);
void MREP_CC48D756B0FC4274917B68472182A6EB(void *, void *);
void MREP_00F2266732EC4C2DAA9086ECCAC949A2(void *, void *);
void MREP_77AE3318BA1A4B9C83BE067B2558C446(void *, void *);
void MREP_6E64A95E343046078A75D985CE573CD0(void *, void *);
void MREP_8EB1EE4347984179AF6EAD61302D72B3(void *, void *);
void MREP_CBDD19E4F95E4AA7A4AA767E194A1254(void *, void *);
void MREP_09868E525EAF410AA5CEA40F6AAFE60E(void *, void *);
void MREP_6544FFC5FF2843EB8BFFC581B6BDAC10(void *, void *);
void MREP_3F75A6B2DB03489DA64C49C467D2B989(void *, void *);
void MREP_1F2BCAC5F07B46889CDBC33ED046CCCB(void *, void *);
void MREP_D9F70C03346342C384D7B190737F3FCE(void *, void *);
void MREP_0A19F9FE34104B76AB95825DE38CDF35(void *, void *);
void MREP_BB75CC7A2DAC451A85A4275A7D369963(void *, void *);
void MREP_F66C5A89BD0D4B92AAB4D177D6F885DA(void *, void *);
void MREP_DE28F0A8EA754F649A261009B9EB9DBC(void *, void *);
void MREP_17666B77B1394BDCA60593561DBB1BE8(void *, void *);
void MREP_AB1A1E5C49D34C888EDFF02B1B34892B(void *, void *);
void MREP_B8CF6028B80E4C58B46E395A7455BEDF(void *, void *);
void MREP_BAF1B9110DD84DA2AAB80B85EF792B9D(void *, void *);
void MREP_6B1A5D5960704C2D9D73E3B6571E1252(void *, void *);
void MREP_C53A48F7B81B424C9D43364FFF2161AC(void *, void *);
void MREP_D076C25A7B724848A6AB33AB62270096(void *, void *);
void MREP_0D2E9D3B1F4B4F0CABCAC1D895F3821D(void *, void *);
void MREP_A55B4D5BF3A04A29BFC0DB0E8677E1AD(void *, void *);
void MREP_BA63A2B06E7D4FE6BE06E5E9010FEF16(void *, void *);
void MREP_F98C6FB8D246415CB042D67BE4D3ACC3(void *, void *);
void MREP_D0A1BE5CA41847FCB8290B172426D98D(void *, void *);
void MREP_22799728F20E4B5C84847DA2D86D20E2(void *, void *);
void MREP_40AA9604236E4EC2A46E954FC7B98A75(void *, void *);
void MREP_88CAEF2485FE4B1D8A5DBA3F0DAC6E0B(void *, void *);
void MREP_8AC797C0F46C44CB9058716E7EF8F516(void *, void *);
void MREP_6FCAD85DF5AC4A0ABC2E51D58C3C4CC9(void *, void *);
void MREP_9A0B39CADB8642F09AD88117B91A2203(void *, void *);
void MREP_C4AF281D6589461BB9D2273D022F3352(void *, void *);
void MREP_F9D23D5D75CA433E9993EEF6BD76B6D4(void *, void *);
void MREP_76D9D8C31AD14EB4A30606E11055DB42(void *, void *);
void MREP_703FE7B584E4447D8203DBF9582A9BC3(void *, void *);
void MREP_F0050B788E8B412EBDB7CD8FB83E1E4D(void *, void *);
void MREP_15DD0AB7858848DF8D8C1CBFAD1EF74E(void *, void *);
void MREP_6806E7D087E34CFD943A00247EBF1293(void *, void *);
void MREP_89B6DFAE80AD40278AF0B815E0A12898(void *, void *);
void MREP_7988F25F5E6747D4ABDD3D6DC221DDF6(void *, void *);
void MREP_6503F7AA7C454BD491252C3683B03DF9(void *, void *);
void MREP_88FD8725AAD74CABA768BCCDCBCF3C42(void *, void *);
void MREP_BB6E267E1BF74EDAB2A7F08BFE3AF3D8(void *, void *);
void MREP_2DDAF9537AF947C7B82ACF8B11903F9F(void *, void *);
void MREP_1FC59E72A5894BD180B54D336971774F(void *, void *);
void MREP_514ED8B9F61048D7BFE1266ABA4FC74D(void *, void *);
void MREP_7B15E4D6C22146DCBB73C462470E001B(void *, void *);
void MREP_41CEE07FF0F141D7877632FC975BB0A0(void *, void *);
void MREP_305029107E4245F0AAF7655CA8C140A9(void *, void *);
void MREP_E195C9C143A44ACCBBFDA45E37085132(void *, void *);
void MREP_D977FA5B8EC0419EB51DCC32D294FEAD(void *, void *);
void MREP_F8F3D0D2E81D4E01B961FF2FD899645A(void *, void *);
void MREP_3287DFCE21574BA49A9AE6EC93163F02(void *, void *);
void MREP_8B756C154FEE4F21806D22ABE6909255(void *, void *);
void MREP_37BA16BB156C467DA14DD747D0E0E6EB(void *, void *);
void MREP_93F77386B6114A86880A76040B971830(void *, void *);
void MREP_8B72F906B46247E9A004F47387DA6560(void *, void *);
void MREP_186D605887EF4870A3B2ECC772FA7DCF(void *, void *);
void MREP_CC67A1E2999E4FCB8A508C48C3F15EED(void *, void *);
void MREP_B3FA969EBB7545548330FF48C4DF4706(void *, void *);
void MREP_7B125151ED29455EB4150061347E69CA(void *, void *);
void MREP_BE3FD161F5CD468CBA96B8492545CF5B(void *, void *);
void MREP_4A6257579CDD4626A9F1D87BEDA52290(void *, void *);
void MREP_CFA5F5CC3CCF45BB9301E00ACC59BBF0(void *, void *);
void MREP_0E0B6875EB4643EAA8E3ED94CCD736BB(void *, void *);
void MREP_5E325D6C50CF4583BBEAACF991E8FDF7(void *, void *);
void MREP_FE3F05E15BEC4834B6212AE3F6E4E62D(void *, void *);
void MREP_899A88252E924C40A2220FFEE85C28B4(void *, void *);
void MREP_9A1B46EE68604B7D85769CA50DC2CBF8(void *, void *);
void MREP_6A82D0BA3D10427CB810BC75CB54AFA1(void *, void *);
void MREP_EA2DAEAA98A04CF79559DF2C37A53C76(void *, void *);
void MREP_002089B79E6F45C5AAAF85DE02725430(void *, void *);
void MREP_33DFF955A0A2472CBDD247DD26C54695(void *, void *);
void MREP_039FC00C50A04347B40626B87A1471DD(void *, void *);
void MREP_A33712D0967042309924271BFCA4A1F2(void *, void *);
void MREP_E7B96C1601AA4D1FA69F26CFE489D4AD(void *, void *);
void MREP_0102668630224A8A8EC0DB93EE5E7920(void *, void *);
void MREP_1D68D24D1F1843589D7294169C413C30(void *, void *);
void MREP_76035221E6CD414797B27042FC364C61(void *, void *);
void MREP_4B64EC137C214F46BBE1C7BAA4163A33(void *, void *);
void MREP_E6CA5C9F34BD478A8F9E572F442B1A63(void *, void *);
void MREP_2215A6EF98054D82888E48334398655F(void *, void *);
void MREP_54B2613DC075483AA24E7271B8EE9972(void *, void *);
void MREP_2A9509A134134FE2B17D4E2B3970E84C(void *, void *);
void MREP_377B67A401F74100830422AE25A9ACE5(void *, void *);
void MREP_B281024029664DFA83EC25F9E60EF5D8(void *, void *);
void MREP_C9A07D306E4F4A0FB58CDE8C65A652D8(void *, void *);
void MREP_2CC0ACB8226E4741B0967957EFD8641B(void *, void *);
void MREP_6BED771C16524FC8B32FC12D287C4AF2(void *, void *);
void MREP_1DE891703DC84D549D70D4069DCA5F27(void *, void *);
void MREP_C2C330EA523247E0BC5654E12F3C44EF(void *, void *);
void MREP_C46E5D0908124D69A5FB82036D56C2EE(void *, void *);
void MREP_D3F977162CC249FA8CE667110F621DD0(void *, void *);
void MREP_B75C9607548440E684CCB42E357EC30E(void *, void *);
void MREP_4DFDBE37DA8948FCB8FC07E19F778107(void *, void *);
void MREP_57D7DD21E58847A6B3CDE327C0BD6233(void *, void *);
void MREP_F6D0FA2649B44D208FE4FEC273658BC3(void *, void *);
void MREP_F676D7B9E2B947739699CAEFB6832996(void *, void *);
void MREP_3E2A3E0D6226418FA51EA0372AB38AAB(void *, void *);
void MREP_6569F3537DA44980B7CF1654485D7E06(void *, void *);
void MREP_BD5B403774CD4BFD92C98245E8AC7238(void *, void *);
void MREP_025554BF0667459CBA2E3105DA879706(void *, void *);
void MREP_1E0149C70FB7482CBB7BB8D80F821D64(void *, void *);
void MREP_7463B3BD569148648FB2CC39D878C5D0(void *, void *);
void MREP_6D9EDD971B344CF8BEC4F2ACE1B9A97F(void *, void *);
void MREP_B483146F2BEF41BBB23FF4081B8612C9(void *, void *);
void MREP_57BFF5137DE2410FAD70459EF21C29F1(void *, void *);
void MREP_09F0F6F7E27B4D6287DD66E72B38C907(void *, void *);
void MREP_156200D36FD9418788AD7B4A629744A5(void *, void *);
void MREP_7BB44EDB60FB46F193D24D3991564BD3(void *, void *);
void MREP_3ADC054EE2A9462BA685529F65D996A1(void *, void *);
void MREP_F1F64E9478EF4A819F73F6918507EB53(void *, void *);
void MREP_F1F443B620794A36A9B6AB2E90B0DE81(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
rb_define_global_const("RUBYMOTION_ENV", @"development");
rb_define_global_const("RUBYMOTION_VERSION", @"4.5");
MREP_48B212745E8E4ED79B548888F622FE7C(self, 0);
MREP_522940D2C1B94AA5868417FC7810F7F5(self, 0);
MREP_175D6AD0408A427696D7C67E629E0172(self, 0);
MREP_54026FD7431C4129AEB566884301C553(self, 0);
MREP_E3DAA347B03A48499E59BD51609F7E1C(self, 0);
MREP_9E1EFA3CA95A4ED7918EA75274B62F0D(self, 0);
MREP_9E6BFCA78E4748839C0812774F1E3CBC(self, 0);
MREP_668AEBB4BA2C4D10BE521AA58EBC9222(self, 0);
MREP_7621BB820321430F9B7D3C1FF355F79B(self, 0);
MREP_D7B03ED331434B789FF18CD73008BE7C(self, 0);
MREP_1CA42FB915304FF9AA656DB33DDEDF48(self, 0);
MREP_5055D4E6537A47D09238360901836F03(self, 0);
MREP_52DE8005149E4149BF7E663431D995AA(self, 0);
MREP_75507912F4F1460B8B4AA4DEBB09F604(self, 0);
MREP_4A443E1182234B34B7A49FA0BEF0B55A(self, 0);
MREP_241EEB52C88D4BE38F3CA26A370EE8A2(self, 0);
MREP_6A69A2F6020C4DC8A6795F6732E1F115(self, 0);
MREP_AB58A0AFB7494181B453913A45D25004(self, 0);
MREP_3A4A6340C2024546B5A44116FFD2EDA8(self, 0);
MREP_1A393373489A48848B5C6F7588438101(self, 0);
MREP_70ECA97B4685472A98973745ED1CE1F9(self, 0);
MREP_E3174C1D5500434F810A0013E658827D(self, 0);
MREP_0A071EDAE2BB46088AF6EDFA1E877851(self, 0);
MREP_BA92CEF5406C483097DB357997EC2DAC(self, 0);
MREP_9FCE85ED83D2412AB5CE0D0AAF25399A(self, 0);
MREP_3E44A1B3EF3449ECB79293B0B7970EE7(self, 0);
MREP_DD6A08C761624A3FBEF847DED6CF1D8E(self, 0);
MREP_6E8B04D1543E4F6B9ABA8B453B51918F(self, 0);
MREP_17ABABC759C944CE8E13D2D7B7A4793B(self, 0);
MREP_09A236E7E7534F1699648BB0C1343B0E(self, 0);
MREP_2D336EC3450A42A7804215220308A2B7(self, 0);
MREP_7D562606C3B54934ADBCBAEA6738DB99(self, 0);
MREP_4949491E11194F2F821F8C576A1CE231(self, 0);
MREP_2CAC35A3E2BE4AEC89665520880E446C(self, 0);
MREP_CD3EFA1E86374E40B4E4724412214EC2(self, 0);
MREP_6110DBA523974E22B6A757647B37DCED(self, 0);
MREP_51A20F62AE1D401C8B584B55217B40CB(self, 0);
MREP_EDF62E95390544F895AC620B6128DEAB(self, 0);
MREP_2FAFD27D5E2644FFBCC42837FE339704(self, 0);
MREP_2419CE4A9A4441668A7651EA43FCFEC5(self, 0);
MREP_021F9BB2BB9E41DF9926DC6FC1862183(self, 0);
MREP_9AC5994DCBFA456CB2B6EAFEA978BEE4(self, 0);
MREP_F24E4081778C4B15A660F002CDBE5F56(self, 0);
MREP_829ED662E6834C2CA6B6FA8A35DEC584(self, 0);
MREP_AE73F99471A540C2A605A2F877CCF32E(self, 0);
MREP_428ECB7F7F58426689BB26B7289FDB37(self, 0);
MREP_63D769F548F54243AC7481B7A33B16C9(self, 0);
MREP_861F2E83707342609774069D62F70710(self, 0);
MREP_92882ADAE8554056B0512894DC521F13(self, 0);
MREP_684D4C24A1D14EFF85D60260878D9730(self, 0);
MREP_4DE13BF4D4FF432F8924841F7AB61289(self, 0);
MREP_9BC55C89D4484B5E85F03A39AEA7502F(self, 0);
MREP_0CB2B14511B24DB287475C252D55AFDD(self, 0);
MREP_9C61252376CE4DBBAFDA8729CE09414E(self, 0);
MREP_1528A6ABF71B4C6EBD82440832DF2A19(self, 0);
MREP_BD8518854AFE4975906D71985F4394F0(self, 0);
MREP_CA0D780B4EBA4631B5EB973F9694847A(self, 0);
MREP_9A3C7AE9ED774583BAAD8A4F4546549F(self, 0);
MREP_0D2EB440657146C1B680E9604208B4F6(self, 0);
MREP_538A06E9BC2D4BA6A7F6A5A54C273FDE(self, 0);
MREP_05E0ABD163684004A61E493214EFE774(self, 0);
MREP_9016CFB2371A4A779D9BA2F0E53D87F7(self, 0);
MREP_18FD331B7FFE46D6AC5BF205C72D79F7(self, 0);
MREP_4F5FD38E8EDD45BF98B2F3B6A779368D(self, 0);
MREP_286DC68265294FC68AA0665384AD8DC7(self, 0);
MREP_2D548DBA376B417099AD290D7EBF2811(self, 0);
MREP_EF9CBA63E5704FC6BB0C5DCEBEE8F229(self, 0);
MREP_2CA7B4F205C147B1AD5BAE6E63E99061(self, 0);
MREP_5F016BD4C385479CB4BCDF2F408E3DFB(self, 0);
MREP_55BCC796AF9E4F9B909DF9CD12BECE05(self, 0);
MREP_4A3707C9D5C647A2BF5AD5A8BDFB6925(self, 0);
MREP_F62F031FCD214D7DA93468207E7A556D(self, 0);
MREP_A324B5BD302448F6A59D1056B0017E16(self, 0);
MREP_3BA59055C6CE43419A85F30A8B1566D3(self, 0);
MREP_E21E590EE65542359A793BCD7F3C5745(self, 0);
MREP_23DEAE473CFB4F2BA87037E82CE4BBD2(self, 0);
MREP_CC48D756B0FC4274917B68472182A6EB(self, 0);
MREP_00F2266732EC4C2DAA9086ECCAC949A2(self, 0);
MREP_77AE3318BA1A4B9C83BE067B2558C446(self, 0);
MREP_6E64A95E343046078A75D985CE573CD0(self, 0);
MREP_8EB1EE4347984179AF6EAD61302D72B3(self, 0);
MREP_CBDD19E4F95E4AA7A4AA767E194A1254(self, 0);
MREP_09868E525EAF410AA5CEA40F6AAFE60E(self, 0);
MREP_6544FFC5FF2843EB8BFFC581B6BDAC10(self, 0);
MREP_3F75A6B2DB03489DA64C49C467D2B989(self, 0);
MREP_1F2BCAC5F07B46889CDBC33ED046CCCB(self, 0);
MREP_D9F70C03346342C384D7B190737F3FCE(self, 0);
MREP_0A19F9FE34104B76AB95825DE38CDF35(self, 0);
MREP_BB75CC7A2DAC451A85A4275A7D369963(self, 0);
MREP_F66C5A89BD0D4B92AAB4D177D6F885DA(self, 0);
MREP_DE28F0A8EA754F649A261009B9EB9DBC(self, 0);
MREP_17666B77B1394BDCA60593561DBB1BE8(self, 0);
MREP_AB1A1E5C49D34C888EDFF02B1B34892B(self, 0);
MREP_B8CF6028B80E4C58B46E395A7455BEDF(self, 0);
MREP_BAF1B9110DD84DA2AAB80B85EF792B9D(self, 0);
MREP_6B1A5D5960704C2D9D73E3B6571E1252(self, 0);
MREP_C53A48F7B81B424C9D43364FFF2161AC(self, 0);
MREP_D076C25A7B724848A6AB33AB62270096(self, 0);
MREP_0D2E9D3B1F4B4F0CABCAC1D895F3821D(self, 0);
MREP_A55B4D5BF3A04A29BFC0DB0E8677E1AD(self, 0);
MREP_BA63A2B06E7D4FE6BE06E5E9010FEF16(self, 0);
MREP_F98C6FB8D246415CB042D67BE4D3ACC3(self, 0);
MREP_D0A1BE5CA41847FCB8290B172426D98D(self, 0);
MREP_22799728F20E4B5C84847DA2D86D20E2(self, 0);
MREP_40AA9604236E4EC2A46E954FC7B98A75(self, 0);
MREP_88CAEF2485FE4B1D8A5DBA3F0DAC6E0B(self, 0);
MREP_8AC797C0F46C44CB9058716E7EF8F516(self, 0);
MREP_6FCAD85DF5AC4A0ABC2E51D58C3C4CC9(self, 0);
MREP_9A0B39CADB8642F09AD88117B91A2203(self, 0);
MREP_C4AF281D6589461BB9D2273D022F3352(self, 0);
MREP_F9D23D5D75CA433E9993EEF6BD76B6D4(self, 0);
MREP_76D9D8C31AD14EB4A30606E11055DB42(self, 0);
MREP_703FE7B584E4447D8203DBF9582A9BC3(self, 0);
MREP_F0050B788E8B412EBDB7CD8FB83E1E4D(self, 0);
MREP_15DD0AB7858848DF8D8C1CBFAD1EF74E(self, 0);
MREP_6806E7D087E34CFD943A00247EBF1293(self, 0);
MREP_89B6DFAE80AD40278AF0B815E0A12898(self, 0);
MREP_7988F25F5E6747D4ABDD3D6DC221DDF6(self, 0);
MREP_6503F7AA7C454BD491252C3683B03DF9(self, 0);
MREP_88FD8725AAD74CABA768BCCDCBCF3C42(self, 0);
MREP_BB6E267E1BF74EDAB2A7F08BFE3AF3D8(self, 0);
MREP_2DDAF9537AF947C7B82ACF8B11903F9F(self, 0);
MREP_1FC59E72A5894BD180B54D336971774F(self, 0);
MREP_514ED8B9F61048D7BFE1266ABA4FC74D(self, 0);
MREP_7B15E4D6C22146DCBB73C462470E001B(self, 0);
MREP_41CEE07FF0F141D7877632FC975BB0A0(self, 0);
MREP_305029107E4245F0AAF7655CA8C140A9(self, 0);
MREP_E195C9C143A44ACCBBFDA45E37085132(self, 0);
MREP_D977FA5B8EC0419EB51DCC32D294FEAD(self, 0);
MREP_F8F3D0D2E81D4E01B961FF2FD899645A(self, 0);
MREP_3287DFCE21574BA49A9AE6EC93163F02(self, 0);
MREP_8B756C154FEE4F21806D22ABE6909255(self, 0);
MREP_37BA16BB156C467DA14DD747D0E0E6EB(self, 0);
MREP_93F77386B6114A86880A76040B971830(self, 0);
MREP_8B72F906B46247E9A004F47387DA6560(self, 0);
MREP_186D605887EF4870A3B2ECC772FA7DCF(self, 0);
MREP_CC67A1E2999E4FCB8A508C48C3F15EED(self, 0);
MREP_B3FA969EBB7545548330FF48C4DF4706(self, 0);
MREP_7B125151ED29455EB4150061347E69CA(self, 0);
MREP_BE3FD161F5CD468CBA96B8492545CF5B(self, 0);
MREP_4A6257579CDD4626A9F1D87BEDA52290(self, 0);
MREP_CFA5F5CC3CCF45BB9301E00ACC59BBF0(self, 0);
MREP_0E0B6875EB4643EAA8E3ED94CCD736BB(self, 0);
MREP_5E325D6C50CF4583BBEAACF991E8FDF7(self, 0);
MREP_FE3F05E15BEC4834B6212AE3F6E4E62D(self, 0);
MREP_899A88252E924C40A2220FFEE85C28B4(self, 0);
MREP_9A1B46EE68604B7D85769CA50DC2CBF8(self, 0);
MREP_6A82D0BA3D10427CB810BC75CB54AFA1(self, 0);
MREP_EA2DAEAA98A04CF79559DF2C37A53C76(self, 0);
MREP_002089B79E6F45C5AAAF85DE02725430(self, 0);
MREP_33DFF955A0A2472CBDD247DD26C54695(self, 0);
MREP_039FC00C50A04347B40626B87A1471DD(self, 0);
MREP_A33712D0967042309924271BFCA4A1F2(self, 0);
MREP_E7B96C1601AA4D1FA69F26CFE489D4AD(self, 0);
MREP_0102668630224A8A8EC0DB93EE5E7920(self, 0);
MREP_1D68D24D1F1843589D7294169C413C30(self, 0);
MREP_76035221E6CD414797B27042FC364C61(self, 0);
MREP_4B64EC137C214F46BBE1C7BAA4163A33(self, 0);
MREP_E6CA5C9F34BD478A8F9E572F442B1A63(self, 0);
MREP_2215A6EF98054D82888E48334398655F(self, 0);
MREP_54B2613DC075483AA24E7271B8EE9972(self, 0);
MREP_2A9509A134134FE2B17D4E2B3970E84C(self, 0);
MREP_377B67A401F74100830422AE25A9ACE5(self, 0);
MREP_B281024029664DFA83EC25F9E60EF5D8(self, 0);
MREP_C9A07D306E4F4A0FB58CDE8C65A652D8(self, 0);
MREP_2CC0ACB8226E4741B0967957EFD8641B(self, 0);
MREP_6BED771C16524FC8B32FC12D287C4AF2(self, 0);
MREP_1DE891703DC84D549D70D4069DCA5F27(self, 0);
MREP_C2C330EA523247E0BC5654E12F3C44EF(self, 0);
MREP_C46E5D0908124D69A5FB82036D56C2EE(self, 0);
MREP_D3F977162CC249FA8CE667110F621DD0(self, 0);
MREP_B75C9607548440E684CCB42E357EC30E(self, 0);
MREP_4DFDBE37DA8948FCB8FC07E19F778107(self, 0);
MREP_57D7DD21E58847A6B3CDE327C0BD6233(self, 0);
MREP_F6D0FA2649B44D208FE4FEC273658BC3(self, 0);
MREP_F676D7B9E2B947739699CAEFB6832996(self, 0);
MREP_3E2A3E0D6226418FA51EA0372AB38AAB(self, 0);
MREP_6569F3537DA44980B7CF1654485D7E06(self, 0);
MREP_BD5B403774CD4BFD92C98245E8AC7238(self, 0);
MREP_025554BF0667459CBA2E3105DA879706(self, 0);
MREP_1E0149C70FB7482CBB7BB8D80F821D64(self, 0);
MREP_7463B3BD569148648FB2CC39D878C5D0(self, 0);
MREP_6D9EDD971B344CF8BEC4F2ACE1B9A97F(self, 0);
MREP_B483146F2BEF41BBB23FF4081B8612C9(self, 0);
MREP_57BFF5137DE2410FAD70459EF21C29F1(self, 0);
MREP_09F0F6F7E27B4D6287DD66E72B38C907(self, 0);
MREP_156200D36FD9418788AD7B4A629744A5(self, 0);
MREP_7BB44EDB60FB46F193D24D3991564BD3(self, 0);
MREP_3ADC054EE2A9462BA685529F65D996A1(self, 0);
MREP_F1F64E9478EF4A819F73F6918507EB53(self, 0);
MREP_F1F443B620794A36A9B6AB2E90B0DE81(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}