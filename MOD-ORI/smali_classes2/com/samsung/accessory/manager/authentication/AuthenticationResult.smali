.class public final Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public apiState:I

.field public isKeyChanged:Z

.field public isUrlExist:I

.field public final mBundle:Landroid/os/Bundle;

.field public mByteArrayExtraData:[B

.field public mByteArrayManagerURI:[B

.field public mConnectivityType:I

.field public mExtraID:[B

.field public mReason:I

.field public mRequestPkg:Ljava/lang/String;

.field public mStringExtraData:Ljava/lang/String;

.field public mStringManagerURI:Ljava/lang/String;

.field public publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    const/16 v0, 0x5a

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getResultBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v2, "extra"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 13
    .line 14
    return-object p0
.end method

.method public final setExtraData([B)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "UTF-8"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string p1, ""

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public final setManagerURI([B)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "UTF-8"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string p1, ""

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public final setReason(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 2
    .line 3
    const-string/jumbo v0, "reason"

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
