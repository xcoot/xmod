.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda11;->f$0:Ljava/io/PrintWriter;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda11;->f$0:Ljava/io/PrintWriter;

    .line 3
    check-cast p1, Ljava/lang/String;

    .line 5
    const-string v0, "    "

    .line 7
    invoke-static {p0, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
