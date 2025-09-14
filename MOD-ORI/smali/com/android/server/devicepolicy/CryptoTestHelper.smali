.class public abstract Lcom/android/server/devicepolicy/CryptoTestHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static runAndLogSelfTest()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/devicepolicy/CryptoTestHelper;->runSelfTest()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x3346f

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static native runSelfTest()I
.end method
