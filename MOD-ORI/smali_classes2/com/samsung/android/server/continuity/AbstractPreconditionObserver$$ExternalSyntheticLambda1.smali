.class public final synthetic Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
