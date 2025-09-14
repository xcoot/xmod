.class public abstract Lcom/android/server/policy/KeyCustomizationConstants$UriTags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DICTATION:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.android.honeyboard.DictationProvider"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants$UriTags;->DICTATION:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method
