.class public final Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(IILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 11
    .line 12
    return-void
.end method
