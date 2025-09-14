.class public final synthetic Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/compat/PlatformCompat;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/compat/PlatformCompat;

    .line 3
    check-cast p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 19
    move-result-wide v2

    .line 20
    const-wide/32 v4, 0x8e787b1

    .line 23
    cmp-long v0, v2, v4

    .line 25
    if-nez v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x1

    .line 33
    if-lez v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 38
    move-result v0

    .line 39
    const/16 v3, 0x1d

    .line 41
    if-lt v0, v3, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 46
    move-result p1

    .line 47
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    .line 52
    move-result p0

    .line 53
    if-gt p1, p0, :cond_3

    .line 55
    :cond_2
    move v1, v2

    .line 56
    :cond_3
    :goto_0
    return v1
.end method
