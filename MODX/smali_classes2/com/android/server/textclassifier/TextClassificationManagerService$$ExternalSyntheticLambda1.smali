.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Exception when consume textClassifierService: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "TextClassificationManagerService"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassificationManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
