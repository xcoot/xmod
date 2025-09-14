.class public final Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuildTimeFlagEnabled:Z

.field public final mDefaultValue:Z

.field public final mFlagKey:Ljava/lang/String;

.field public volatile mOverrideValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mFlagKey:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mDefaultValue:Z

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mOverrideValue:Z

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mBuildTimeFlagEnabled:Z

    .line 11
    .line 12
    return-void
.end method
