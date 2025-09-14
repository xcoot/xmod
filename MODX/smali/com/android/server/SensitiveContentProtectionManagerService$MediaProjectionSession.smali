.class public final Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllSeenNotificationKeys:Landroid/util/ArraySet;

.field public final mIsExempted:Z

.field public final mSeenOtpNotificationKeys:Landroid/util/ArraySet;

.field public final mSessionId:J

.field public final mUid:I


# direct methods
.method public constructor <init>(IJZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    .line 18
    iput p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    .line 20
    iput-boolean p4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    .line 22
    iput-wide p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 24
    return-void
.end method
