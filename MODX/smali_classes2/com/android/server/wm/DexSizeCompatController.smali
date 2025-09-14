.class public final Lcom/android/server/wm/DexSizeCompatController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAspectRatioScale:F

.field public mDefaultScale:F


# direct methods
.method public static getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method
