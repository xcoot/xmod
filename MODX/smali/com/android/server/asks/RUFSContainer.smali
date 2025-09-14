.class public final Lcom/android/server/asks/RUFSContainer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mADPCarriers:Ljava/lang/String;

.field public mADPModels:Ljava/lang/String;

.field public mASKSRNEWCarriers:Ljava/lang/String;

.field public mASKSRNEWModels:Ljava/lang/String;

.field public mDigestInToken:Ljava/lang/String;

.field public mHasRUFSToken:Z

.field public mIsDelta:Z

.field public mRUFSpolicyDeltaVersion:Ljava/lang/String;

.field public mRUFSpolicyPath:Ljava/lang/String;

.field public mRUFSpolicyVersion:Ljava/lang/String;

.field public mSizeofFiles:J

.field public mSizeofZip:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    .line 9
    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    .line 23
    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final setADPCarriers(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final setADPModels(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final setASKSRNEWCarriers(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final setASKSRNEWModels(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final setDigest(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final setSizeofFiles(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    .line 3
    return-void
.end method

.method public final setSizeofZip(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    .line 3
    return-void
.end method
