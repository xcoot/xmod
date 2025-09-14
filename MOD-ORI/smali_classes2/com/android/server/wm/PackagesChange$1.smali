.class public final Lcom/android/server/wm/PackagesChange$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PackagesChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PackagesChange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackagesChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/PackagesChange;->executeAllShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method
