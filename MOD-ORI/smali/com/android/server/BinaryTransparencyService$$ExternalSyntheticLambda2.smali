.class public final synthetic Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/BinaryTransparencyService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/BinaryTransparencyService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "/sys/fs/selinux/policy"

    .line 7
    .line 8
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "sepolicy hash: "

    .line 24
    .line 25
    .line 26
    const-string v2, "TransparencyService"

    .line 27
    .line 28
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    const/16 v1, 0x307

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
