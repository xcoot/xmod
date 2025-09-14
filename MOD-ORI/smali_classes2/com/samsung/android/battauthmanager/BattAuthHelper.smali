.class public Lcom/samsung/android/battauthmanager/BattAuthHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "authentication_jni"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public native makeChallengeReq(II)[B
.end method

.method public native makeGetCertReq(IIIIII)[B
.end method

.method public native makeGetDigestsReq(BI)[B
.end method

.method public native readDataFromBattMisc()[B
.end method

.method public native verifyChallengeAuth([B[B[B[B)Z
.end method

.method public native verifyWpcCertChain([B)[B
.end method

.method public native writeDataToBattMisc([B)I
.end method
