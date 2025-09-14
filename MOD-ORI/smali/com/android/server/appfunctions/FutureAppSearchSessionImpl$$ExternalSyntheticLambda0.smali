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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 13
    .line 14
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroid/app/appsearch/SearchSpec;

    .line 42
    .line 43
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 44
    .line 45
    invoke-virtual {p1, v0, p0}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Landroid/app/appsearch/RemoveByDocumentIdRequest;

    .line 57
    .line 58
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Landroid/app/appsearch/PutDocumentsRequest;

    .line 86
    .line 87
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    .line 99
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;

    .line 100
    .line 101
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Landroid/app/appsearch/SetSchemaRequest;

    .line 115
    .line 116
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 122
    .line 123
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 127
    .line 128
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    .line 129
    .line 130
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p0, v0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 134
    .line 135
    .line 136
    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;

    .line 137
    .line 138
    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 143
    .line 144
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
