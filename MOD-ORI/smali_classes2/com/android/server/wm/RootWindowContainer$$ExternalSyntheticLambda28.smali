.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$3:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;->f$4:Z

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    check-cast v3, Lcom/android/server/wm/TaskDisplayArea;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    or-int/2addr p0, p1

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
