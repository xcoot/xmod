.class public final synthetic Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureAppSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSession;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSession;

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 5
    check-cast p2, Ljava/lang/Throwable;

    .line 7
    check-cast p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V

    .line 12
    return-void
.end method
