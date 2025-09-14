.class public abstract Lcom/samsung/android/localeoverlaymanager/OverlayConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

.field public static final SPECIAL_LOCALE_CODES_EQUIVALENTS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->SPECIAL_LOCALE_CODES_EQUIVALENTS:Ljava/util/Map;

    .line 14
    .line 15
    const-string v2, "fil"

    .line 16
    .line 17
    const-string/jumbo v3, "tl"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string v0, "he"

    .line 24
    .line 25
    const-string v2, "iw"

    .line 26
    .line 27
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v0, "id"

    .line 31
    .line 32
    const-string v2, "in"

    .line 33
    .line 34
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "yi"

    .line 38
    .line 39
    .line 40
    const-string v2, "ji"

    .line 41
    .line 42
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method
