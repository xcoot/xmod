.class public final Lcom/android/server/display/WifiDisplayAdapter$10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$displayId:I

.field public final synthetic val$isStart:Z

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$displayId:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$isStart:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$packageName:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$displayId:I

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$isStart:Z

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$packageName:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v4, 0x15

    .line 12
    .line 13
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
