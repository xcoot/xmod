.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;
.super Landroid/util/LruCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 2
    .line 3
    const/16 p1, 0x64

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/os/IBinder;

    .line 2
    .line 3
    check-cast p3, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    .line 4
    .line 5
    check-cast p4, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
