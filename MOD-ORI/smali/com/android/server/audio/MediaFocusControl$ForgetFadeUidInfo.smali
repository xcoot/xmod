.class public final Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    .line 22
    .line 23
    if-eq p1, p0, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    return v0

    .line 27
    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    .line 2
    .line 3
    return p0
.end method
