.class public final Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:I

.field public mIsPriorityOverwritten:Z

.field public mNiceValue:I

.field public mPrimaryUsingFrontendHandle:I

.field public mPriority:I

.field public final mProcessId:I

.field public final mShareFeClientIds:Ljava/util/Set;

.field public mShareeFeClientId:Ljava/lang/Integer;

.field public final mTvInputSessionId:Ljava/lang/String;

.field public final mUseCase:I

.field public mUsingCasSystemId:I

.field public mUsingCiCamId:I

.field public final mUsingDemuxHandles:Ljava/util/Set;

.field public final mUsingFrontendHandles:Ljava/util/Set;

.field public final mUsingLnbHandles:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 33
    .line 34
    new-instance v1, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 40
    .line 41
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 42
    .line 43
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 47
    .line 48
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    .line 49
    .line 50
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 51
    .line 52
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    .line 55
    .line 56
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    .line 59
    .line 60
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    .line 61
    .line 62
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ClientProfile[id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", tvInputSessionId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", useCase="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", processId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 39
    .line 40
    const-string v1, "]"

    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
