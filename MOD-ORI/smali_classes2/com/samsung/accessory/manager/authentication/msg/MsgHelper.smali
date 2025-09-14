.class public Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "accauthentication_jni"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public native ccic_close()I
.end method

.method public native ccic_open()I
.end method

.method public native genRandom()[B
.end method

.method public native ioctl_longDataRead()[B
.end method

.method public native ioctl_longDataRead_batt()[B
.end method

.method public native ioctl_longDataWrite([B)I
.end method

.method public native ioctl_longDataWrite_batt([B)I
.end method

.method public native verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native wirelesscharger_open()I
.end method
