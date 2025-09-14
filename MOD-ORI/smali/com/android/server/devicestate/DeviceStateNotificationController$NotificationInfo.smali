.class Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final activeNotificationContent:Ljava/lang/String;

.field public final activeNotificationTitle:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final powerSaveModeNotificationContent:Ljava/lang/String;

.field public final powerSaveModeNotificationTitle:Ljava/lang/String;

.field public final thermalCriticalNotificationContent:Ljava/lang/String;

.field public final thermalCriticalNotificationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationContent:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationContent:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationContent:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
