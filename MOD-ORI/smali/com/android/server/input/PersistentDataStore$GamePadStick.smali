.class public final Lcom/android/server/input/PersistentDataStore$GamePadStick;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInverseH:Z

.field public final mInverseRot:Z

.field public final mInverseV:Z

.field public final mToStick:I


# direct methods
.method public constructor <init>(IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mToStick:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseH:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseV:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseRot:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final isSame(Lcom/android/server/input/PersistentDataStore$GamePadStick;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mToStick:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mToStick:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseH:Z

    .line 8
    .line 9
    iget-boolean v1, p1, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseH:Z

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseV:Z

    .line 14
    .line 15
    iget-boolean v1, p1, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseV:Z

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-boolean p0, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseRot:Z

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseRot:Z

    .line 22
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method
