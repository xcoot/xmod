.class public final synthetic Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    const-string p1, "  "

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
