.class public final Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public enabled:Z

.field public enabledAdminReceiver:Z

.field public enabledAlarmService:Z

.field public enabledKGProvider:Z

.field public enabledKgEventService:Z

.field public enabledSelfUpdateReceiver:Z

.field public enabledSystemIntentReceiver:Z

.field public isOk:Z

.field public validSignature:Z

.field public validVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    .line 24
    .line 25
    return-void
.end method
