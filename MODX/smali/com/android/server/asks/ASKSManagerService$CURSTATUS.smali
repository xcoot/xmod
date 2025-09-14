.class public final Lcom/android/server/asks/ASKSManagerService$CURSTATUS;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public hasReqInstallPEM:Z

.field public isAllowSelfUpdate:Z

.field public isBlockSelfUpdateWithPEM:Z

.field public isCheckRequestInstallPEM:Z

.field public isCheckZipFormat:Z

.field public isDevDevice:Z

.field public isIP:Z

.field public isLimitOnlyKorMCC:Z

.field public isLocAccessibilityCase:Z

.field public isLocUrlCase:Z

.field public isLocWebCase:Z

.field public isLocZipCase:Z

.field public isTabletExcepted:Z

.field public isValidZip:Z

.field public final target_model:Ljava/lang/String;

.field public totalList:I

.field public totalListString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    .line 34
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    .line 36
    return-void
.end method
