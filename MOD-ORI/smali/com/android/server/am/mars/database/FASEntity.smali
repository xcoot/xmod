.class public Lcom/android/server/am/mars/database/FASEntity;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private strCurBatteryUsage:Ljava/lang/String;

.field private strDisableReason:Ljava/lang/String;

.field private strDisableResetTIme:Ljava/lang/String;

.field private strDisableType:Ljava/lang/String;

.field private strExtras:Ljava/lang/String;

.field private strFasReason:Ljava/lang/String;

.field private strLevel:Ljava/lang/String;

.field private strMode:Ljava/lang/String;

.field private strNew:Ljava/lang/String;

.field private strPackageType:Ljava/lang/String;

.field private strPkgName:Ljava/lang/String;

.field private strPreBatteryUsage:Ljava/lang/String;

.field private strResetTime:Ljava/lang/String;

.field private strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final getStrDisableReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrDisableResetTime()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrDisableType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrExtras()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrFasReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrLevel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrNew()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrPackageType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrPkgName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrPreBatteryUsage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrResetTime()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStrUid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
