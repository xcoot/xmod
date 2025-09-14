.class public final Lcom/android/server/am/mars/database/FASEntityBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public strDisableReason:Ljava/lang/String;

.field public strDisableResetTime:Ljava/lang/String;

.field public strDisableType:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strFasReason:Ljava/lang/String;

.field public strLevel:Ljava/lang/String;

.field public strMode:Ljava/lang/String;

.field public strNew:Ljava/lang/String;

.field public strPackageType:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strPreBatteryUsage:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field public strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/am/mars/database/FASEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/server/am/mars/database/FASEntity;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/database/FASEntity;-><init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V

    .line 15
    return-object v0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method
