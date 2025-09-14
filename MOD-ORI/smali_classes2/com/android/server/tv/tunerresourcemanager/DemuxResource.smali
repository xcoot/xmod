.class public final Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFilterTypes:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DemuxResource[handle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", filterTypes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isInUse="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", ownerClientId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

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
