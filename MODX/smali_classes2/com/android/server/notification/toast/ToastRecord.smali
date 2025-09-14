.class public abstract Lcom/android/server/notification/toast/ToastRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final displayId:I

.field public final isSystemToast:Z

.field public mDuration:I

.field public final mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final windowToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    .line 17
    .line 18
    iput p9, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    .line 19
    .line 20
    iput p7, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isAppRendered()Z
.end method

.method public abstract show()Z
.end method
