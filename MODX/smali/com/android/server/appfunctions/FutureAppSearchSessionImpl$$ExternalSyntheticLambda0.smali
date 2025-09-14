.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/appsearch/SearchSpec;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 10
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 14
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 21
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 24
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    .line 28
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 31
    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 34
    return-object v1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 41
    check-cast p0, Landroid/app/appsearch/SearchSpec;

    .line 43
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 45
    invoke-virtual {p1, v0, p0}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 52
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 54
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 56
    check-cast p0, Landroid/app/appsearch/RemoveByDocumentIdRequest;

    .line 58
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 65
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 68
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 70
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    .line 72
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 75
    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 78
    return-object v1

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 81
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 83
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 85
    check-cast p0, Landroid/app/appsearch/PutDocumentsRequest;

    .line 87
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 94
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 97
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;

    .line 101
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 104
    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 107
    return-object v1

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 110
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 112
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 114
    check-cast p0, Landroid/app/appsearch/SetSchemaRequest;

    .line 116
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 123
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 126
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 128
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    .line 130
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 133
    invoke-virtual {p1, p0, v0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 136
    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;

    .line 138
    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;-><init>(I)V

    .line 142
    invoke-virtual {v1, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
