.class public final Lcom/android/server/clipboard/ClipboardService$Clipboard;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final activePermissionOwners:Ljava/util/HashSet;

.field public final deviceId:I

.field public final mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

.field public final mNotifiedUids:Landroid/util/SparseBooleanArray;

.field public mPrimaryClipPackage:Ljava/lang/String;

.field public mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field public primaryClip:Landroid/content/ClipData;

.field public final primaryClipByUid:Ljava/util/Map;

.field public final primaryClipListeners:Landroid/os/RemoteCallbackList;

.field public primaryClipUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 13
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 23
    const/16 v0, 0x270f

    .line 25
    iput v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 27
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 29
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    .line 34
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 36
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    .line 43
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 48
    iput p1, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    .line 50
    return-void
.end method
