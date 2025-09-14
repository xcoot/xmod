.class public final Lcom/android/server/incident/RequestQueue$Rec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final key:Landroid/os/IBinder;

.field public final runnable:Ljava/lang/Runnable;

.field public final value:Z


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method
