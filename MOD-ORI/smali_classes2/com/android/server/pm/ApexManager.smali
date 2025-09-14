.class public abstract Lcom/android/server/pm/ApexManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sApexManagerSingleton:Lcom/android/server/pm/ApexManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/ApexManager$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Lcom/android/server/pm/ApexManager$1;

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/ApexManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Lcom/android/server/pm/ApexManager$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/ApexManager;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract getActiveApexInfos()Ljava/util/List;
.end method

.method public abstract getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getBackingApexFile(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
.end method

.method public abstract markStagedSessionSuccessful(I)V
.end method

.method public abstract registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract revertActiveSessions()Z
.end method

.method public abstract submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
.end method
