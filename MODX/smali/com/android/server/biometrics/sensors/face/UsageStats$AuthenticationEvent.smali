.class public final Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticated:Z

.field public final mError:I

.field public final mLatency:J

.field public final mStartTime:J

.field public final mUser:I

.field public final mVendorError:I


# direct methods
.method public constructor <init>(JJZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mStartTime:J

    .line 6
    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mLatency:J

    .line 8
    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mAuthenticated:Z

    .line 10
    iput p6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mError:I

    .line 12
    iput p7, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mVendorError:I

    .line 14
    iput p8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mUser:I

    .line 16
    return-void
.end method
