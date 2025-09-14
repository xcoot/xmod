.class public final synthetic Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$KeyDumper;


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
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    const-string p1, "  "

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dump(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "  "

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p2, "%sDisplay #%d:"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    return-void
.end method
