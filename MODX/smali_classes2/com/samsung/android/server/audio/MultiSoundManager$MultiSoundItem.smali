.class public final Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDevice:I

.field public mRatio:I

.field public mShouldMute:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 7
    .line 8
    if-ltz p3, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x64

    .line 11
    .line 12
    if-le p3, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const-string p1, "AS.MultiSoundManager"

    .line 19
    .line 20
    const-string p2, "Invalid app volume"

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_1
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final removable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
