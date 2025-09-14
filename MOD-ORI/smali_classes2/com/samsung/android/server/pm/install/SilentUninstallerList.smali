.class public final Lcom/samsung/android/server/pm/install/SilentUninstallerList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final allowedSilentUninstallers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v14, "com.sec.android.mimage.photoretouching"

    .line 5
    .line 6
    const-string v15, "com.sec.android.app.vepreload"

    .line 7
    .line 8
    const-string v0, "com.samsung.android.sm.devicesecurity"

    .line 9
    .line 10
    const-string v1, "com.samsung.android.sm.devicesecurity.tcm"

    .line 11
    .line 12
    const-string v2, "com.samsung.android.asksmanager"

    .line 13
    .line 14
    const-string v3, "com.samsung.android.lool"

    .line 15
    .line 16
    const-string v4, "com.samsung.android.sm_cn"

    .line 17
    .line 18
    const-string v5, "com.ws.dm"

    .line 19
    .line 20
    const-string v6, "com.samsung.knox.securefolder"

    .line 21
    .line 22
    const-string v7, "com.android.managedprovisioning"

    .line 23
    .line 24
    const-string v8, "com.samsung.android.app.watchmanagerstub"

    .line 25
    .line 26
    const-string v9, "com.sec.android.AutoPreconfig"

    .line 27
    .line 28
    const-string v10, "com.sec.android.app.myfiles"

    .line 29
    .line 30
    const-string v11, "com.sec.android.app.samsungapps"

    .line 31
    .line 32
    const-string v12, "com.samsung.android.cidmanager"

    .line 33
    .line 34
    const-string v13, "com.sec.android.app.camera"

    .line 35
    .line 36
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object/from16 v1, p0

    .line 45
    .line 46
    iput-object v0, v1, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    .line 47
    .line 48
    return-void
.end method
