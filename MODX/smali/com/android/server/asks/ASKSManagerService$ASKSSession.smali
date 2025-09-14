.class public final Lcom/android/server/asks/ASKSManagerService$ASKSSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public emMode:I

.field public isASKSTarget:Z

.field public mCAKeyIndex:Ljava/lang/String;

.field public mCertName:Ljava/lang/String;

.field public mCodePath:Ljava/lang/String;

.field public mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field public mPackageDigest:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPackageNameHash:Ljava/lang/String;

.field public mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field public mRufsContainer:Lcom/android/server/asks/RUFSContainer;

.field public mSignature:[Landroid/content/pm/Signature;

.field public mTokenName:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    .line 6
    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    .line 25
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 27
    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 30
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 32
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    .line 34
    return-void
.end method

.method public final setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 3
    return-void
.end method

.method public final setEMMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 3
    return-void
.end method

.method public final setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 3
    return-void
.end method

.method public final setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    .line 3
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "version = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string v1, ", restrict = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 25
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    const-string v1, ", em mode = "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 48
    if-eqz v1, :cond_1

    .line 50
    const-string v1, ", deletable = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
