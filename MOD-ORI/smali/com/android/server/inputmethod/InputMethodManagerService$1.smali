.class public final Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
