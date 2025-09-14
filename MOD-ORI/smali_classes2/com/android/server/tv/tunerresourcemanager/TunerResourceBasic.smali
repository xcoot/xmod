.class public abstract Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandle:I

.field public mIsInUse:Z

.field public mOwnerClientId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 6
    .line 7
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final setOwner(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 5
    .line 6
    return-void
.end method
