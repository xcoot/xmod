.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

.field public final mPackageName:Ljava/lang/String;

.field public final mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    .line 6
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 8
    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

    .line 12
    return-void
.end method


# virtual methods
.method public final hasUserIdAndPackageName(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
