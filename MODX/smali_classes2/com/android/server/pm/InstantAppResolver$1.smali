.class public final Lcom/android/server/pm/InstantAppResolver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$computer:Lcom/android/server/pm/Computer;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

.field public final synthetic val$origIntent:Landroid/content/Intent;

.field public final synthetic val$requestObj:Landroid/content/pm/InstantAppRequest;

.field public final synthetic val$sanitizedIntent:Landroid/content/Intent;

.field public final synthetic val$token:Ljava/lang/String;

.field public final synthetic val$userManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$computer:Lcom/android/server/pm/Computer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$userManager:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method
