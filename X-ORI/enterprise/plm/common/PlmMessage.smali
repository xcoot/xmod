.class public final Lcom/android/server/enterprise/plm/common/PlmMessage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public callback:Ljava/lang/Object;

.field public obj1:Ljava/lang/Object;

.field public obj2:Ljava/lang/Object;

.field public obj3:Ljava/lang/Object;

.field public obj4:Ljava/lang/Object;


# direct methods
.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 5
    iput p1, p0, Landroid/os/Message;->what:I

    .line 6
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 10
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 12
    iput p1, p0, Landroid/os/Message;->what:I

    .line 13
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method
