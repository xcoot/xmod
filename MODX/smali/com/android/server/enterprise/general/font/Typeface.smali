.class public final Lcom/android/server/enterprise/general/font/Typeface;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;

.field public mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;

.field public final mSerifFonts:Ljava/util/List;

.field public mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSerifFonts:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mMonospaceFonts:Ljava/util/List;

    .line 32
    return-void
.end method
