.class public final Lcom/android/server/wm/DisplayPolicy$DecorInsets;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

.field public final mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    array-length p1, v0

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz p1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    .line 28
    .line 29
    .line 30
    aput-object v1, v0, p1

    .line 31
    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "="

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    .line 8
    aget-object v1, p0, v0

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 11
    .line 12
    aget-object v2, v2, v0

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
