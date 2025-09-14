.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/appsearch/AppSearchSession;

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 23
    invoke-static {p1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw p0

    .line 31
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/app/appsearch/SetSchemaResponse;

    .line 43
    return-object p0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 46
    invoke-static {p1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
