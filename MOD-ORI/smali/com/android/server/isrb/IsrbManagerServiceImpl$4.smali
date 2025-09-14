.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string/jumbo p2, "com.samsung.isrb.SYSTEM_UPDATE"

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
