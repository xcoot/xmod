.class public final Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    .line 6
    return-void
.end method


# virtual methods
.method public final onTransactionError(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    .line 3
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->frozenBinderTransactionDetected(IIII)V

    .line 8
    return-void
.end method
